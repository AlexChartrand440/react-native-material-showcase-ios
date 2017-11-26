/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from "react";
import { Platform, StyleSheet, Text, View, Button } from "react-native";

import {
  MaterialShowcase,
  MaterialShowcaseSequence,
  MaterialShowcaseView
} from "react-native-material-showcase-ios";

import Top from "./components/Top";
import Center from "./components/Center";
import Bottom from "./components/Bottom";

const instructions = Platform.select({
  ios: "Press Cmd+R to reload,\n" + "Cmd+D or shake for dev menu",
  android:
    "Double tap R on your keyboard to reload,\n" +
    "Shake or press menu button for dev menu"
});

export default class App extends Component<{}> {
  constructor(props) {
    super(props);

    this.showcaseTargets = [];
  }

  componentDidMount() {
    setTimeout(() => {
      let materialShowcaseSequence = new MaterialShowcaseSequence();
      this.showcaseTargets.forEach(showcaseTarget => {
        materialShowcaseSequence.add(showcaseTarget);
      });

      MaterialShowcaseView.ShowSequence(materialShowcaseSequence);
    }, 1000);
  }

  render() {
    return <View style={styles.container}>
        <Top style={styles.top} addMaterialShowcaseTarget={showcaseTarget => {
            this.showcaseTargets.push(showcaseTarget);
          }} />
        <Center style={styles.center} addMaterialShowcaseTarget={showcaseTarget => {
            this.showcaseTargets.push(showcaseTarget);
          }} />
        <Bottom style={styles.bottom} addMaterialShowcaseTarget={showcaseTarget => {
            this.showcaseTargets.push(showcaseTarget);
          }} />
      </View>;
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "column",
    justifyContent: "space-between"
  },
  top: {
    flex: 1
  },
  center: {
    flex: 1
  },
  bottom: {
    flex: 1
  }
});
