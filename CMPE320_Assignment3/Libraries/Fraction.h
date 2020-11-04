#pragma once

#ifdef COMPDLL_EXPORTS
#define COMPDLL __declspec(dllexport)
#else
#define COMPDLL __declspec(dllimport)
#endif


#ifdef __cplusplus

#pragma once

#include <iostream>




using namespace std;

class Fraction {
    public:
        Fraction(int _numerator, int _denominator);
        Fraction(int _numerator);
        Fraction();
        
        Fraction& operator++();
        Fraction operator++(int);
        Fraction& operator-();
        Fraction& operator+=(const Fraction& secondTerm);
        const int& numerator() const;
        const int& denominator() const;
        

    
    private:
        int findGCD(int a, int b);
        int nume;
        int denom;

    friend ostream& operator<<(ostream& out, const Fraction& fractionToPrint);
    friend istream& operator>>(istream& in, Fraction& destinationFraction);
};

extern "C" Fraction* NewFraction(void);
typedef Fraction * Fraction_creator(void);


Fraction operator-(const Fraction& firstTerm, const Fraction& secondTerm);
Fraction operator+(const Fraction& firstTerm, const Fraction& secondTerm);
Fraction operator*(const Fraction& firstTerm, const Fraction& secondTerm);
Fraction operator/(const Fraction& firstTerm, const Fraction& divisor);

bool operator<(const Fraction& firstTerm, const Fraction& secondTerm);
bool operator>(const Fraction& firstTerm, const Fraction& secondTerm);
bool operator<=(const Fraction& firstTerm, const Fraction& secondTerm);
bool operator>=(const Fraction& firstTerm, const Fraction& secondTerm);
bool operator!=(const Fraction& firstTerm, const Fraction& secondTerm);
bool operator==(const Fraction& firstTerm, const Fraction& secondTerm);

class FractionException {
    public:
        FractionException(const string& message);
        string& what();
    private:
        string message;
};


#endif
