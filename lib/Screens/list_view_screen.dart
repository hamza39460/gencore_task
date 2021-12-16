import 'package:flutter/material.dart';
import 'package:gencore_task/Controllers/service_provider_controller.dart';
import 'package:gencore_task/Models/service_provider/datum.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListViewScreen extends StatefulWidget {
  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  final ServiceProviderController _serviceProviderController =
      ServiceProviderController();

  static const primaryColor = Color(0xFF4DD1E1);
  @override
  void initState() {
    super.initState();
    _serviceProviderController.fetchServiceProvider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _serviceProviderController.streamController.stream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text("Some Error Occoured"));
          } else if (!snapshot.hasData ||
              snapshot.data == ServiceProviderState.fetching) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData &&
              snapshot.data == ServiceProviderState.noData) {
            return const Center(child: Text("No Data"));
          } else if (snapshot.hasData &&
              snapshot.data == ServiceProviderState.fetched) {
            return ListView.builder(
              itemCount:
                  _serviceProviderController.serviceProvidersList!.length,
              itemBuilder: (context, index) {
                return _detailsCard(
                    _serviceProviderController.serviceProvidersList![index]);
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _detailsCard(Datum data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shadowColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 8, 12),
              child: CachedNetworkImage(
                imageUrl: data.profileRequest!.approvedByUser!.profileImage!,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageBuilder: (context, imageProvider) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(8)),
                  );
                },
                height: 50,
                width: 50,
              ),
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(4)),
                Text(
                  data.businessName ?? "",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 4),
                if ((data.isVerified ?? 1) == 1)
                  const Icon(Icons.check_circle_outline, color: primaryColor)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 12, 4, 12),
              child: Row(
                children: List.filled(5, 0)
                    .map((e) =>
                        const Icon(Icons.star_outline, color: Colors.grey))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 4, 4),
              child: _feedBackText(
                  "${data.totalFeedbackCount ?? 0} feedback reviews"),
            ),
            (data.finishedJobs ?? 0) == 0
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
                    child: _feedBackText("No Jobs Performed"),
                  )
                : Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
                    child: _feedBackText(
                        "${data.finishedJobs ?? 0} Jobs Performed")),
            Container(
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(4)),
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              margin: const EdgeInsets.fromLTRB(16, 8, 4, 20),
              child: const Text(
                "Post Job & Invite to Bid",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 1,
              color: Colors.black26,
            ),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: _businessDetails(Icons.pin_drop, "Location ",
                    data.userDetail?.city ?? 'N/A')),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: _businessDetails(Icons.pin_drop, "Member Since ",
                    data.formattedCreatedAt ?? 'N/A')),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                data.businessDetails ?? "",
                style: const TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _feedBackText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 14, color: primaryColor, fontWeight: FontWeight.w600),
    );
  }

  Row _businessDetails(IconData iconData, String text1, String text2) {
    return Row(
      children: [
        const Icon(
          Icons.pin_drop,
          color: primaryColor,
          size: 20,
        ),
        const SizedBox(width: 10),
        RichText(
          text: TextSpan(
              text: text1,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: text2,
                  style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
      ],
    );
  }
}
