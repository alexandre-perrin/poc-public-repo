BUILD_DIR = build

agent: $(BUILD_DIR)/agent
.PHONY: agent

clean:
	rm -r $(BUILD_DIR)
.PHONY: clean

$(BUILD_DIR):
	mkdir -p $@

$(BUILD_DIR)/%.o: $(BUILD_DIR)
	touch $@

$(BUILD_DIR)/agent: $(BUILD_DIR)/obj.o
	touch $@
