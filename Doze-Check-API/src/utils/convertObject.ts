import _ from "lodash";

function toCamelCase(obj: any): any {
    if (Array.isArray(obj)) {
        return obj.map(toCamelCase);
    } else if (obj !== null && typeof obj === 'object') {
        return Object.keys(obj).reduce((acc: any, key: string) => {
            const camelKey = _.camelCase(key);
            acc[camelKey] = toCamelCase(obj[key]);
            return acc;
        }, {});
    }
    return obj;
}

function toSnakeCase(obj: any): any {
    if (Array.isArray(obj)) {
        return obj.map(toSnakeCase);
    } else if (obj !== null && typeof obj === 'object') {
        return Object.keys(obj).reduce((acc: any, key: string) => {
        const snakeKey = _.snakeCase(key);
        acc[snakeKey] = toSnakeCase(obj[key]);
        return acc;
        }, {});
    }
    return obj;
}

export {
    toCamelCase,
    toSnakeCase
}