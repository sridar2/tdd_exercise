#include "converter.h"
#include <gtest/gtest.h>

TEST(SquareRootTest, PositiveNos)
{
    ASSERT_EQ("I", convert(1));
    ASSERT_EQ("IV", convert(4));
    ASSERT_EQ("V", convert(5));
    ASSERT_EQ("IX", convert(9));
    ASSERT_EQ("X", convert(10));
    ASSERT_EQ("XL", convert(40));
    ASSERT_EQ("L", convert(50));
    ASSERT_EQ("XC", convert(90));
    ASSERT_EQ("C", convert(100));
    ASSERT_EQ("CD", convert(400));
    ASSERT_EQ("D", convert(500));
    ASSERT_EQ("CM", convert(900));
    ASSERT_EQ("M", convert(1000));
}

int main(int argc, char **argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
