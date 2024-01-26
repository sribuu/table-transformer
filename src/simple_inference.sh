## end2end
python3 simple_inference.py \
--mode extract \
--detection_config_path detection_config.json \
--detection_model_path ../weights/model_det_v0.1.pth \
--detection_device cpu \
--structure_config_path structure_config.json \
--structure_model_path ../weights/model_v0.2.pth \
--structure_device cpu \
--image ../samples/page.png \
--visualize --objects