import 'package:flutter/material.dart';
import 'package:help_other/presentation/widgets/userAvatart.dart';
import 'package:help_other/utils/appTheme.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('ddd'),
            ],
          )),
    );
  }
}

class UserProfileBar extends StatelessWidget {
  const UserProfileBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserAvatar(),
            const SizedBox(
              width: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  FlatButton(
                    color: Colors.blueGrey.shade700,
                    onPressed: () {
                      //TODO
                    },
                    child: Text(
                      'Edit Profile',
                      style: AppTheme.generalTextStyle,
                    ),
                  ),
                  FlatButton(
                    minWidth: 40,
                    padding: EdgeInsets.zero,
                    color: Colors.blueGrey.shade700,
                    onPressed: () {
                      //TODO
                    },
                    child: Icon(
                      Icons.person_add_alt_1_outlined,
                      color: AppTheme.selectedIconColor,
                    ),
                  ),
                  FlatButton(
                    minWidth: 40,
                    color: Colors.blueGrey.shade700,
                    onPressed: () {
                      //TODO
                    },
                    child: Icon(
                      Icons.apps_outlined,
                      color: AppTheme.selectedIconColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Jan Nikka Estefani',
                    style: AppTheme.usernameTextStyle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'ID: jannikkaestefani',
                  style: AppTheme.usernameTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Tap to add bio to your profile',
                  style: AppTheme.generalTextStyle
                      .copyWith(fontSize: 20, fontWeight: FontWeight.w200),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      _buildRichText(0, 'Likes'),
                      _buildRichText(0, 'Following'),
                      _buildRichText(0, 'Followers'),
                    ],
                  )),
            ],
          ),
        ),

        // Container(
        //   child: PageView(
          
        //   children: [
        //     Container(child: Text('Text 1'),),
        //     Container(child: Text('Text 1'),)
        //   ]
        // ),
        // )
        // ProfileDetails()
      ],
    );
  }

  Widget _buildTabItem(){
    return Column(
      children: [
        Text('Videos 0' ,style: AppTheme.usernameTextStyle.copyWith(
          fontSize: 16,
        ),)
      ],
    );
  }

  Widget _buildRichText(int likeNumber, String label) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: RichText(
        text: TextSpan(
            text: likeNumber.toString(),
            style: AppTheme.usernameTextStyle.copyWith(fontSize: 16),
            children: <TextSpan>[
              TextSpan(
                text: ' $label',
                style: AppTheme.usernameTextStyle.copyWith(
                    fontSize: 16,
                    color: AppTheme.unselectedIconColor,
                    fontWeight: FontWeight.w300),
              )
            ]),
      ),
    );
  }
}

class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('cgbghn')
      ]);
  }

  Widget _buildView(int index) {
    List<Container> views = [
      Container(
        child: Center(
          child: Text('Videos Screen'),
        ),
      ),
      Container(
        child: Center(
          child: Text('Likes Screen'),
        ),
      )
    ];

    return views[index];
  }

  //index manager
  void _updateIndex(int index) => this.setState(() {
        this.index = index;
      });
}
