import React, { Component } from 'react'
import { StyleSheet, View, Button } from 'react-native'

import { AppTourView } from 'react-native-material-showcase-ios'

class Bottom extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Button
          title={'Bottom Left'}
          ref={ref => {
            this.props.addAppTourTarget && this.props.addAppTourTarget(AppTourView.for(
                  ref,
                  {
                    primaryText: "This is a target button 6",
                    secondaryText:
                      "We have the best targets, believe me"
                  }
                ));
          }}
          onPress={() => {}}
        />
        <Button
          title={'Bottom Right'}
          ref={ref => {
            this.props.addAppTourTarget && this.props.addAppTourTarget(AppTourView.for(
                  ref,
                  {
                    primaryText: "This is a target button 7",
                    secondaryText:
                      "We have the best targets, believe me"
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

export default Bottom
