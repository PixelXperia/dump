.class public Lcom/android/settingslib/accounts/AccountVisibilityFilter;
.super Ljava/lang/Object;
.source "AccountVisibilityFilter.java"


# instance fields
.field private mHiddenAccounts:[Ljava/lang/String;

.field private mWhiteListAccounts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$array;->config_invisible_account_list:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$array;->config_account_white_list:I

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    return-void
.end method

.method private isAccountInInvisibleList(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->mHiddenAccounts:[Ljava/lang/String;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isAccountInWhiteList(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->mWhiteListAccounts:[Ljava/lang/String;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 73
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public isAccountVisibleInAddingList(Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAccountVisibleInManagerList(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->isAccountInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/accounts/AccountVisibilityFilter;->isAccountInInvisibleList(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
