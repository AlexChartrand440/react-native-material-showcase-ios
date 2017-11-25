import React, { Component } from 'react'
import { StyleSheet, View, Button } from 'react-native'

import { MaterialShowcase } from "react-native-material-showcase-ios";

class Top extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Button
          title={'Top Left'}
          ref={ref => {
            this.props.addMaterialShowcaseTarget &&
              this.props.addMaterialShowcaseTarget(
                MaterialShowcase.forView(ref, {
                  title: 'This is a target button 1',
                  description: 'We have the best targets, believe me',
                  outerCircleColor: 'outerCircleColorPrimary'
                })
              )
          }}
          onPress={() => {}}
        />
        <Button
          title={'Top Right'}
          ref={ref => {
            this.props.addMaterialShowcaseTarget &&
              this.props.addMaterialShowcaseTarget(
                MaterialShowcase.forView(ref, {
                  title: 'This is a target button 2',
                  description: 'We have the best targets, believe me',
                  outerCircleColor: 'outerCircleColorSecondary'
                })
              )
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
