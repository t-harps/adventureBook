import React from "react"
import PropTypes from "prop-types"
class OfferCard extends React.Component {
  render () {
    return (
      <React.Fragment>
        {this.props.name}
      </React.Fragment>
    );
  }
}

OfferCard.propTypes = {
  name: PropTypes.string
};
export default OfferCard
