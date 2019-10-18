import React, { useState } from 'react';
import PropTypes from "prop-types"
import ItemsCarousel from 'react-items-carousel';
import OfferSlide from "./OfferSlide.js";

class Carousel extends React.Component {
  constructor(props) {
    super(props);
    this.state = { 
      activeItemIndex: 0,
      children: this.createChildren()
    };
  }

  createChildren() {
    return this.props.offers.map((offer, i) => {
      return (<OfferSlide offer={offer}/>);
    })
  }

  render () {
	  return (
	    <div>
	      <ItemsCarousel
          infiniteLoop
	        activeItemIndex={this.state.activeItemIndex}
          requestToChangeActive={value => this.setState({ activeItemIndex: value })}
	        numberOfCards={2}
	        gutter={20}
	        leftChevron={<span>{'<'}</span>}
	        rightChevron={<span>{'>'}</span>}
	        outsideChevron
	        chevronWidth={40}
	      >
	        {this.state.children}
	      </ItemsCarousel>
	    </div>
	  );
	}
}

Carousel.propTypes = {
  offers: PropTypes.array
};
export default Carousel
