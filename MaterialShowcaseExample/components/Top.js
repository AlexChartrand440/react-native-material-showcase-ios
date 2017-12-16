import React, { Component } from 'react'
import { StyleSheet, View, Button } from 'react-native'

import { AppTour, AppTourView } from "react-native-material-showcase-ios";

class Top extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Button
          title={'Top Left'}
          ref={ref => {
            this.button1 = ref

            this.props.addAppTourTarget && this.props.addAppTourTarget(AppTourView.for(
                  ref,
                  {
                    primaryText: "This is a target button 1",
                    secondaryText:
                      "We have the best targets, believe me",
                    targetTintColor: "#3f52ae"
                  }
                ));
          }}
          onPress={() => {
            let targetView = AppTourView.for(
              this.button1,
              {
                primaryText: "This is a target button 1",
                secondaryText:
                  "We have the best targets, believe me",
                backgroundPromptColor: "#3f52ae"
              }
            );

            AppTour.ShowFor(targetView);
          }}
        />
        <Button
          title={'Top Right'}
          ref={ref => {
            this.props.addAppTourTarget && this.props.addAppTourTarget(AppTourView.for(
                  ref,
                  {
                    primaryText: "This is a target button 2",
                    secondaryText:
                      "We have the best targets, believe me",
                    backgroundPromptColor: "#f24481"
                  }
                ));
          }}
          onPress={() => {}}
        />
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    justifyContent: 'space-between'
  }
})

export default Top
