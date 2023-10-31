
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:proto_app/modules/color_scheme_image/inherited_widget.dart';


class ColorImageScreen extends StatelessWidget {
  const ColorImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModel(
      child: Scaffold(
        appBar: AppBar(title: const Text("Color image Picker")),
        body: Center(child: Column(
          children: [    
            ImagePreview(),
            ColorZone()
          ],
        )),
      ),
    );
  }
}

class ColorZone extends StatelessWidget {
  const ColorZone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final vm = ViewModel.of(context);
    return ValueListenableBuilder(
      valueListenable: vm.memoryImage,
      builder: ( context, value, child) {
        if (value == null) return const Text("No Image");
        final scheme = ColorScheme.fromImageProvider(provider: MemoryImage(value));
        return FutureBuilder(
          future: scheme,
          builder: (context, snapshot) {
            if(snapshot.connectionState != ConnectionState.done){
              return const Text("No Data");
            }
            final dataScheme = snapshot.data!;
            return  Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(width: 200,height: 50, color: dataScheme.primary,),
                    Container(width: 200,height: 50, color: dataScheme.secondary,),
                    Container(width: 200,height: 50, color: dataScheme.tertiary,),
                    Container(width: 200,height: 50, color: dataScheme.onPrimary,),
                    Container(width: 200,height: 50, color: dataScheme.onSecondary,),
                    Container(width: 200,height: 50, color: dataScheme.onTertiary,),
                    Container(width: 200,height: 50, color: dataScheme.background,),
                    Container(width: 200,height: 50, color: dataScheme.onBackground,),
                    Container(width: 200,height: 50, color: dataScheme.surface,),
                    Container(width: 200,height: 50, color: dataScheme.onSurface,),
                    Container(width: 200,height: 50, color: dataScheme.primaryContainer,),
                    Container(width: 200,height: 50, color: dataScheme.secondaryContainer,),
                    Container(width: 200,height: 50, color: dataScheme.tertiaryContainer,),
                    Container(width: 200,height: 50, color: dataScheme.onPrimaryContainer,),
                    Container(width: 200,height: 50, color: dataScheme.onSecondaryContainer,),
                    Container(width: 200,height: 50, color: dataScheme.onTertiaryContainer,),

                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class ImagePreview extends StatelessWidget {
  const ImagePreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final vm = ViewModel.of(context);
    return Column(
      children: [
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white10,
            border: Border.all(width: 2, color: Colors.white24),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Center(
            // child: Icon(Icons.image),
            child: ValueListenableBuilder(
              valueListenable: vm.memoryImage,
              builder: (context,  value, child) {
                if(value== null) return const Icon(Icons.image, size: 30,);
                return Image(image: MemoryImage(value));
              },
            ),
          ),
        ),
    
    
        TextButton(
          onPressed: () async {
            final result = await  FilePicker.platform.pickFiles(
              type: FileType.image
            );
            vm.memoryImage.value = result?.files.first.bytes;
          }, 
          child: Text("Tocame")
        ),
      ],
    );
  }
}


