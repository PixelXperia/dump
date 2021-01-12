.class public Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;
.super Landroid/widget/FrameLayout;
.source "SonyClock2Digit.java"


# static fields
.field private static final ARABIC_NUMS:[Ljava/lang/String;


# instance fields
.field private mCurrentDigit:I

.field private mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

.field private mIsHourDigit:Z

.field private mIsTensDigit:Z

.field private mTextDigit:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    .line 24
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->ARABIC_NUMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsHourDigit:Z

    .line 45
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsTensDigit:Z

    return-void
.end method

.method private isArabicNumber(C)Z
    .locals 1

    .line 184
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->ARABIC_NUMS:[Ljava/lang/String;

    .line 185
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final onFinishInflate()V
    .locals 4

    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    .line 96
    sget v1, Lcom/android/systemui/R$id;->somc_sony_clock_2_hour_tens_digit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    sget v0, Lcom/android/systemui/R$id;->hour_tens_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    .line 98
    sget v0, Lcom/android/systemui/R$id;->hour_tens_digit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    .line 99
    iput-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsHourDigit:Z

    .line 100
    iput-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsTensDigit:Z

    goto :goto_0

    .line 101
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->somc_sony_clock_2_hour_ones_digit:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 102
    sget v0, Lcom/android/systemui/R$id;->hour_ones_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    .line 103
    sget v0, Lcom/android/systemui/R$id;->hour_ones_digit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    .line 104
    iput-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsHourDigit:Z

    .line 105
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsTensDigit:Z

    goto :goto_0

    .line 106
    :cond_1
    sget v1, Lcom/android/systemui/R$id;->somc_sony_clock_2_minute_tens_digit:I

    if-ne v0, v1, :cond_2

    .line 107
    sget v0, Lcom/android/systemui/R$id;->minute_tens_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->minute_tens_digit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    .line 109
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsHourDigit:Z

    .line 110
    iput-boolean v2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsTensDigit:Z

    goto :goto_0

    .line 111
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->somc_sony_clock_2_minute_ones_digit:I

    if-ne v0, v1, :cond_3

    .line 112
    sget v0, Lcom/android/systemui/R$id;->minute_ones_digit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    .line 113
    sget v0, Lcom/android/systemui/R$id;->minute_ones_digit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    .line 114
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsHourDigit:Z

    .line 115
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsTensDigit:Z

    goto :goto_0

    .line 118
    :cond_3
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsHourDigit:Z

    .line 119
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsTensDigit:Z

    :goto_0
    return-void
.end method

.method public final updateDigit(CZ)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->updateDigit(CZZ)V

    return-void
.end method

.method public final updateDigit(CZZ)V
    .locals 4

    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 150
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->isArabicNumber(C)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_0

    if-nez v0, :cond_0

    .line 157
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    iget-boolean p3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsHourDigit:Z

    iget-boolean v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mIsTensDigit:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mCurrentDigit:I

    if-eq v0, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    invoke-virtual {p1, v0, p3, v1, p2}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->setDigit(IZZZ)V

    .line 163
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 167
    :cond_2
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_3

    if-nez v0, :cond_3

    .line 170
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 172
    :cond_3
    iget-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_1
    iput v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mCurrentDigit:I

    return-void
.end method

.method public updateThemeColor(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mImageDigit:Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Canvas;->updateThemeColor(I)V

    .line 190
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock2/SonyClock2Digit;->mTextDigit:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
