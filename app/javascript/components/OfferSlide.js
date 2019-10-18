import React from "react"
import PropTypes from "prop-types"
import Surfer from '../../assets/images/surfer.svg';

class OfferSlide extends React.Component {
  render () {
    return (
      <div class="col-md-4">
        <div class="card mb-4 shadow-sm">
          <Surfer/>
          <div class="card-body">
            <p class="card-text">{this.props.offer.description}</p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

OfferSlide.propTypes = {
  offer: PropTypes.object
};
export default OfferSlide
