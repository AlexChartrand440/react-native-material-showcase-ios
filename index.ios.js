import { findNodeHandle, NativeModules } from "react-native";

const { RNMaterialShowcase } = NativeModules;

class MaterialShowcaseView {
  static ShowSequence(sequence) {
    let materialShowcaseTargets = sequence.getAll();

    let viewIds = [];
    let props = {};

    materialShowcaseTargets &&
      materialShowcaseTargets.forEach((materialShowcaseTarget, key, materialShowcaseTargets) => {
        viewIds.push(materialShowcaseTarget.view);
        props[key] = materialShowcaseTarget.props;
      });

    RNMaterialShowcase.ShowSequence(viewIds, props);
  }

  static ShowFor(materialShowcaseTarget) {
    RNMaterialShowcase.ShowFor(materialShowcaseTarget.view, materialShowcaseTarget.props);
  }
}

class MaterialShowcaseSequence {
  constructor() {
    this.materialShowcaseTargets = new Map();
  }

  add(materialShowcaseTarget) {
    this.materialShowcaseTargets.set(materialShowcaseTarget.view, materialShowcaseTarget);
  }

  remove(materialShowcaseTarget) {
    this.materialShowcaseTargets.delete(materialShowcaseTarget.view);
  }

  removeAll() {
    this.materialShowcaseTargets = new Map();
  }

  get(materialShowcaseTarget) {
    return this.materialShowcaseTargets.get(materialShowcaseTarget);
  }

  getAll() {
    return this.materialShowcaseTargets;
  }
}

class MaterialShowcase {
  static forView(view, props) {
    return {
      view: findNodeHandle(view),
      props: props
    };
  }
}

export { MaterialShowcase, MaterialShowcaseSequence, MaterialShowcaseView }
