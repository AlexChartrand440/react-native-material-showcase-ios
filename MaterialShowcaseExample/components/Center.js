import React, { Component } from 'react';
import { StyleSheet, View, Button } from 'react-native';

import { AppTourView } from 'react-native-material-showcase-ios';

class Center extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Button
          title={'Center Left'}
          ref={ref => {
            this.props.addAppTourTarget &&
              this.props.addAppTourTarget(
                AppTourView.for(ref, {
                  primaryText: 'This is a target button 3',
                  secondaryText: 'We have the best targets, believe me',
                })
              );
          }}
          onPress={() => {}}
        />
        <Button
          title={'Center Center'}
          ref={ref => {
            this.props.addAppTourTarget &&
              this.props.addAppTourTarget(
                AppTourView.for(ref, {
                  primaryText: 'This is a target button 4',
                  secondaryText: 'We have the best targets, believe me',
                })
              );
          }}
          onPress={() => {}}
        />
        <Button
          title={'Center Right'}
          ref={ref => {
            this.props.addAppTourTarget &&
              this.props.addAppTourTarget(
                AppTourView.for(ref, {
                  primaryText: 'This is a target button 5',
                  secondaryText:
                    'We have the best targets, believe me\nsecondaryTextAlignment',
                  secondaryTextAlignment: 'right',
                })
              );
          }}
          onPress={() => {}}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
});

export default Center;
