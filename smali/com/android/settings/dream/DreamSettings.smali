.class public Lcom/android/settings/dream/DreamSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DreamSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/android/settings/dream/DreamSettings$1;

    invoke-direct {v0}, Lcom/android/settings/dream/DreamSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/android/settings/dream/DreamSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v1, Lcom/android/settings/dream/WhenToDreamPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/WhenToDreamPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/android/settings/dream/StartNowPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/StartNowPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static getDreamSettingDescriptionResId(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f120edc

    return p0

    :cond_0
    const p0, 0x7f120eda

    return p0

    :cond_1
    const p0, 0x7f120ed9

    return p0

    :cond_2
    const p0, 0x7f120ede

    return p0
.end method

.method static getKeyFromSetting(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "never"

    return-object p0

    :cond_0
    const-string p0, "either_charging_or_docked"

    return-object p0

    :cond_1
    const-string p0, "while_docked_only"

    return-object p0

    :cond_2
    const-string p0, "while_charging_only"

    return-object p0
.end method

.method static getSettingFromPrefKey(Ljava/lang/String;)I
    .locals 5

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "while_charging_only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "never"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "either_charging_or_docked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "while_docked_only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5eeeb255 -> :sswitch_3
        -0x118fdea6 -> :sswitch_2
        0x63dca8c -> :sswitch_1
        0x3cc2082c -> :sswitch_0
    .end sparse-switch
.end method

.method static getSummaryTextFromBackend(Lcom/android/settingslib/dream/DreamBackend;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0x7f120edd

    .line 147
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 140
    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    .line 141
    invoke-static {v0, p0}, Lcom/android/settings/dream/DreamSettings;->getSummaryTextFromBackend(Lcom/android/settingslib/dream/DreamBackend;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getWhenToDreamSettings(Lcom/android/settingslib/dream/DreamBackend;Z)I
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result v0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    if-ne p1, v0, :cond_2

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/android/settings/dream/DreamSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f1208c3

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DreamSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150050

    return p0
.end method
