.class final Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;
.super Ljava/lang/Object;
.source "SonyClockLoops.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Patterns"
.end annotation


# static fields
.field static cacheKey:Ljava/lang/String;

.field static clockHourView12:Ljava/lang/String;

.field static clockHourView24:Ljava/lang/String;

.field static clockMinuteView:Ljava/lang/String;

.field static clockSeparator12:Ljava/lang/String;

.field static clockSeparator24:Ljava/lang/String;

.field static clockView12:Ljava/lang/String;

.field static clockView24:Ljava/lang/String;

.field static dateView:Ljava/lang/String;


# direct methods
.method private static selectSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\'.\'"

    if-nez v1, :cond_2

    const-string v1, "\'h\'"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "[a-zA-Z]"

    const-string v1, ""

    .line 380
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method static update(Landroid/content/Context;)V
    .locals 5

    .line 328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 332
    sget v1, Lcom/android/systemui/R$string;->abbrev_wday_month_day_no_year:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    sget v2, Lcom/android/systemui/R$string;->clock_12hr_format:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    sget v3, Lcom/android/systemui/R$string;->clock_24hr_format:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    sget-object v4, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->dateView:Ljava/lang/String;

    .line 340
    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView12:Ljava/lang/String;

    const-string v1, "a"

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, ""

    if-nez v2, :cond_1

    .line 344
    sget-object v2, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView12:Ljava/lang/String;

    .line 347
    :cond_1
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView24:Ljava/lang/String;

    .line 349
    sget-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView12:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->selectSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockSeparator12:Ljava/lang/String;

    .line 350
    sget-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView24:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->selectSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockSeparator24:Ljava/lang/String;

    .line 353
    sget-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView12:Ljava/lang/String;

    const-string v0, "\'.\'"

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[^hHkK]"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockHourView12:Ljava/lang/String;

    .line 358
    sget-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockHourView24:Ljava/lang/String;

    .line 359
    sget-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockView12:Ljava/lang/String;

    const-string v0, "[^m]"

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->clockMinuteView:Ljava/lang/String;

    .line 361
    sput-object v3, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$Patterns;->cacheKey:Ljava/lang/String;

    return-void
.end method
