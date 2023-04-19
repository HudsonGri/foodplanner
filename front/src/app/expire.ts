import * as moment from 'moment';




const check_expire = function (recipe_timestamp: number) {


    // Returns true if value has not expired, false if expired
    var expire_time = moment().subtract(7, 'days');
    if (recipe_timestamp > expire_time.unix()) {
        return true
    } else {
        return false
    }
}
export default check_expire;