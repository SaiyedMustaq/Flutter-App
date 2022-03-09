import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class StandardButtonPage extends StatefulWidget {
  const StandardButtonPage({Key? key}) : super(key: key);

  @override
  _StandardButtonPageState createState() => _StandardButtonPageState();
}

class _StandardButtonPageState extends State<StandardButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const DefaultButton(),
            const DisabledButton(),
            const TransparentButton(),
            const BlockButton(),
            const OutlineButton(),
            const PillShape(),
            const PillShapeDisabledButton(),
            const PillsBlockButton(),
            const PillRoundedOutlineButton(),
            const SquareSolidButton(),
            const SquareDisabledButton(),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Text('Square Disabled Button'),
                  ),
                  GFButton(
                    blockButton: true,
                    onPressed: () {},
                    text: "Primary",
                    shape: GFButtonShape.square,
                    color: GFColors.PRIMARY,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    text: "Success",
                    shape: GFButtonShape.square,
                    color: GFColors.SUCCESS,
                  ),
                  GFButton(
                    onPressed: () {},
                    blockButton: true,
                    text: "Secondary",
                    shape: GFButtonShape.square,
                    color: GFColors.SECONDARY,
                  ),
                ],
              ),
            ),
            const SquareButtonSizeProperties(),
            const SquareOutlineButton(),
            const DisabledIconButton(),
            const SolidIconButton(),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Text('Square Disabled Button'),
                  ),
                  GFButton(
                    blockButton: true,
                    onPressed: () {},
                    text: "Primary outline",
                    type: GFButtonType.outline,
                    icon: const Icon(
                      Icons.settings,
                      color: GFColors.PRIMARY,
                    ),
                  ),
                  GFButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: GFColors.PRIMARY,
                    ),
                    blockButton: true,
                    text: "Success outline2x",
                    type: GFButtonType.outline2x,
                  ),
                ],
              ),
            ),
            const SolidSocialButtonWithText(),
          ],
        ),
      ),
    );
  }
}

class SolidSocialButtonWithText extends StatelessWidget {
  const SolidSocialButtonWithText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Solid Social Button With Text'),
          ),
          GFButton(
            onPressed: () {},
            text: "Facebook",
            icon: const Icon(Icons.facebook,color: Colors.white,),
            type: GFButtonType.solid,
            fullWidthButton: true,
          ),
        ],
      ),
    );
  }
}

class SolidIconButton extends StatelessWidget {
  const SolidIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Text('Solid Icon Button'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GFButton(
              onPressed: () {},
              text: "Share",
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            GFButton(
              onPressed: () {},
              text: "Share",
              icon: const Icon(
                Icons.save,
                color: Colors.white,
              ),
            ),
            GFButton(
              onPressed: () {},
              text: "Share",
              color: GFColors.SUCCESS,
              icon: const Icon(
                Icons.save_alt,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DisabledIconButton extends StatelessWidget {
  const DisabledIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Text('Disabled Icon Button'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            GFButton(
              onPressed: null,
              text: "Share",
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            GFButton(
              onPressed: null,
              text: "Share",
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
            ),
            GFButton(
              onPressed: null,
              text: "Share",
              color: GFColors.SUCCESS,
              icon: Icon(
                Icons.save_alt,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SquareOutlineButton extends StatelessWidget {
  const SquareOutlineButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Square Outline Button'),
          ),
          GFButton(
            blockButton: true,
            onPressed: () {},
            text: "Primary Outline",
            shape: GFButtonShape.square,
            color: GFColors.PRIMARY,
            size: GFSize.LARGE,
            type: GFButtonType.outline,
          ),
          GFButton(
            blockButton: true,
            onPressed: () {},
            text: "Success Outline2x",
            shape: GFButtonShape.square,
            color: GFColors.PRIMARY,
            size: GFSize.LARGE,
            type: GFButtonType.outline2x,
          ),
        ],
      ),
    );
  }
}

class SquareButtonSizeProperties extends StatelessWidget {
  const SquareButtonSizeProperties({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Square Button Size Properties'),
          ),
          GFButton(
            blockButton: true,
            onPressed: () {},
            text: "Primary Large Size",
            shape: GFButtonShape.square,
            color: GFColors.PRIMARY,
            size: GFSize.LARGE,
          ),
          GFButton(
            onPressed: () {},
            blockButton: true,
            text: "Success Medium Size",
            shape: GFButtonShape.square,
            color: GFColors.SUCCESS,
            size: GFSize.MEDIUM,
          ),
          GFButton(
            onPressed: () {},
            blockButton: true,
            text: "Secondary Small Size",
            shape: GFButtonShape.square,
            color: GFColors.SECONDARY,
            size: GFSize.SMALL,
          ),
        ],
      ),
    );
  }
}

class SquareDisabledButton extends StatelessWidget {
  const SquareDisabledButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Square Disabled Button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              GFButton(
                onPressed: null,
                text: "Primary",
                shape: GFButtonShape.square,
                color: GFColors.PRIMARY,
              ),
              GFButton(
                onPressed: null,
                text: "Success",
                shape: GFButtonShape.square,
                color: GFColors.SUCCESS,
              ),
              GFButton(
                onPressed: null,
                text: "Secondary",
                shape: GFButtonShape.square,
                color: GFColors.SECONDARY,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SquareSolidButton extends StatelessWidget {
  const SquareSolidButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Square Solid Button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                onPressed: () {},
                text: "Primary",
                shape: GFButtonShape.square,
                color: GFColors.PRIMARY,
              ),
              GFButton(
                onPressed: () {},
                text: "Success",
                shape: GFButtonShape.square,
                color: GFColors.SUCCESS,
              ),
              GFButton(
                onPressed: () {},
                text: "Secondary",
                shape: GFButtonShape.square,
                color: GFColors.SECONDARY,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PillRoundedOutlineButton extends StatelessWidget {
  const PillRoundedOutlineButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Pill Rounded Outline Button'),
          ),
          GFButton(
            onPressed: () {},
            blockButton: true,
            text: "Primary Outline",
            shape: GFButtonShape.pills,
            type: GFButtonType.outline,
          ),
          GFButton(
            blockButton: true,
            onPressed: () {},
            text: "Primary Outlin 2X",
            shape: GFButtonShape.pills,
            type: GFButtonType.outline2x,
          ),
        ],
      ),
    );
  }
}

class PillsBlockButton extends StatelessWidget {
  const PillsBlockButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Pill Shape Block Button'),
          ),
          GFButton(
            blockButton: true,
            onPressed: () {},
            text: "Primary Large",
            shape: GFButtonShape.pills,
            color: GFColors.PRIMARY,
            size: GFSize.LARGE,
          ),
          GFButton(
            blockButton: true,
            onPressed: () {},
            text: "Primary Medium",
            shape: GFButtonShape.pills,
            color: GFColors.PRIMARY,
            size: GFSize.MEDIUM,
          ),
          GFButton(
            blockButton: true,
            onPressed: () {},
            text: "Primary Small",
            shape: GFButtonShape.pills,
            color: GFColors.PRIMARY,
            size: GFSize.SMALL,
          ),
        ],
      ),
    );
  }
}

class PillShapeDisabledButton extends StatelessWidget {
  const PillShapeDisabledButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Pill Shape Disabled Button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              GFButton(
                onPressed: null,
                text: "Primary",
                shape: GFButtonShape.pills,
                color: GFColors.PRIMARY,
              ),
              GFButton(
                onPressed: null,
                text: "Secondary",
                shape: GFButtonShape.pills,
                color: GFColors.SECONDARY,
              ),
              GFButton(
                onPressed: null,
                text: "Success",
                shape: GFButtonShape.pills,
                color: GFColors.SUCCESS,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Default Button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              GFButton(
                child: const Text('Alt'),
                color: GFColors.ALT,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Danger'),
                color: GFColors.DANGER,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Dark'),
                color: GFColors.DARK,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Focus'),
                color: GFColors.FOCUS,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                child: const Text('Info'),
                color: GFColors.INFO,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Light'),
                color: GFColors.LIGHT,
                onPressed: () {},
              ),
              GFButton(
                elevation: 5.0,
                child: const Text('Primary'),
                color: GFColors.PRIMARY,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Secondary'),
                color: GFColors.SECONDARY,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                child: const Text('Success'),
                color: GFColors.SUCCESS,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Transparent'),
                color: GFColors.TRANSPARENT,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Warning'),
                color: GFColors.WARNING,
                onPressed: () {},
              ),
              GFButton(
                child: const Text(
                  'White',
                  style: TextStyle(color: Colors.black),
                ),
                color: GFColors.WHITE,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DisabledButton extends StatelessWidget {
  const DisabledButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Disabled Button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: const [
              GFButton(
                disabledColor: Colors.black,
                disabledElevation: 1.1,
                child: Text('Alt'),
                color: GFColors.ALT,
                onPressed: null,
              ),
              GFButton(
                elevation: 5.0,
                child: Text('Danger'),
                color: GFColors.DANGER,
                onPressed: null,
              ),
              GFButton(
                child: Text('Dark'),
                color: GFColors.DARK,
                onPressed: null,
              ),
              GFButton(
                child: Text('Focus'),
                color: GFColors.FOCUS,
                onPressed: null,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              GFButton(
                child: Text('Info'),
                color: GFColors.INFO,
                onPressed: null,
              ),
              GFButton(
                child: Text('Light'),
                color: GFColors.LIGHT,
                onPressed: null,
              ),
              GFButton(
                child: Text('Primary'),
                color: GFColors.PRIMARY,
                onPressed: null,
              ),
              GFButton(
                child: Text('Secondary'),
                color: GFColors.SECONDARY,
                onPressed: null,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              GFButton(
                child: Text('Success'),
                color: GFColors.SUCCESS,
                onPressed: null,
              ),
              GFButton(
                child: Text('Transparent'),
                color: GFColors.TRANSPARENT,
                onPressed: null,
              ),
              GFButton(
                child: Text('Warning'),
                color: GFColors.WARNING,
                onPressed: null,
              ),
              GFButton(
                child: Text(
                  'White',
                  style: TextStyle(color: Colors.black),
                ),
                color: GFColors.WHITE,
                onPressed: null,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TransparentButton extends StatelessWidget {
  const TransparentButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Elevated Transparent Button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              GFButton(
                type: GFButtonType.transparent,
                disabledColor: Colors.black,
                disabledElevation: 1.1,
                child: const Text('Alt'),
                color: GFColors.ALT,
                onPressed: () {},
              ),
              GFButton(
                type: GFButtonType.transparent,
                elevation: 5.0,
                child: const Text('Danger'),
                color: GFColors.DANGER,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Dark'),
                type: GFButtonType.transparent,
                color: GFColors.DARK,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Focus'),
                color: GFColors.FOCUS,
                onPressed: () {},
                type: GFButtonType.transparent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                child: const Text('Info'),
                color: GFColors.INFO,
                type: GFButtonType.transparent,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Light'),
                color: GFColors.LIGHT,
                onPressed: () {},
                type: GFButtonType.transparent,
              ),
              GFButton(
                child: const Text('Primary'),
                color: GFColors.PRIMARY,
                onPressed: () {},
                type: GFButtonType.transparent,
              ),
              GFButton(
                type: GFButtonType.transparent,
                child: const Text('Secondary'),
                color: GFColors.SECONDARY,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                type: GFButtonType.transparent,
                child: const Text('Success'),
                color: GFColors.SUCCESS,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Transparent'),
                color: GFColors.TRANSPARENT,
                onPressed: () {},
                type: GFButtonType.transparent,
              ),
              GFButton(
                child: const Text('Warning'),
                color: GFColors.WARNING,
                onPressed: () {},
                type: GFButtonType.transparent,
              ),
              GFButton(
                child: const Text(
                  'White',
                  style: TextStyle(color: Colors.black),
                ),
                color: GFColors.WHITE,
                onPressed: () {},
                type: GFButtonType.transparent,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BlockButton extends StatelessWidget {
  const BlockButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      semanticContainer: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Elevated Block Button'),
          ),
          GFButton(
            blockButton: true,
            child: const Text('Large'),
            size: GFSize.LARGE,
            color: GFColors.PRIMARY,
            onPressed: () {},
            type: GFButtonType.solid,
            fullWidthButton: true,
          ),
          GFButton(
            blockButton: true,
            child: const Text('Medium'),
            size: GFSize.MEDIUM,
            color: GFColors.PRIMARY,
            onPressed: () {},
          ),
          GFButton(
            blockButton: true,
            child: const Text('Small'),
            color: GFColors.PRIMARY,
            size: GFSize.SMALL,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  const OutlineButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Elevated Outline Button'),
          ),
          GFButton(
            blockButton: true,
            child: const Text('Outline'),
            type: GFButtonType.outline,
            size: GFSize.LARGE,
            color: GFColors.PRIMARY,
            onPressed: () {},
          ),
          GFButton(
            blockButton: true,
            child: const Text('Outline2x'),
            size: GFSize.MEDIUM,
            type: GFButtonType.outline2x,
            color: GFColors.PRIMARY,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class PillShape extends StatelessWidget {
  const PillShape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('Pill shape'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GFButton(
                child: const Text('Pill Shape'),
                shape: GFButtonShape.pills,
                size: GFSize.LARGE,
                color: GFColors.PRIMARY,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Pill Shape'),
                size: GFSize.MEDIUM,
                shape: GFButtonShape.pills,
                color: GFColors.SUCCESS,
                onPressed: () {},
              ),
              GFButton(
                child: const Text('Pill Shape'),
                size: GFSize.MEDIUM,
                shape: GFButtonShape.pills,
                color: GFColors.SECONDARY,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
