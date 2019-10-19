import React, { useState } from 'react';
import PropTypes from "prop-types"

class TypeFilters extends React.Component {
  constructor(props) {
    super(props);
    this.state = { 
      activeFilter: false,
      filters: ["Surf", "Bike", "Climb"]
    };
  }

  selectFilter(type) {
    if (type === this.state.activeFilter) {
      this.setState({activeFilter: false})
      $(".col-md-4").css("opacity", "1")
    } else {
  	  this.setState({activeFilter: type})
      $(".col-md-4").css("opacity", "0.1")
      $(`.${type}`).css("opacity", "1")
    }
  }

  renderTabs() {
  	return React.Children.map(this.state.filters, (filter, i) => {
  		let active = (this.state.activeFilter === filter) ? 'active' : '';
  		let middle = (i%2 == 1) ? 'middle' : '';
  		return <div onClick={() => this.selectFilter(filter)} className={`${active} ${middle} col-4 type-selector`}>{filter}</div>;
  	})
  }

  render () {
	  return (
	    <div className="row">
	      {this.renderTabs()}
	    </div>
	  );
	}
}

TypeFilters.propTypes = {
};
export default TypeFilters
