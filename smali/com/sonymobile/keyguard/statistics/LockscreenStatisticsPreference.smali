.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsPreference;
.super Ljava/lang/Object;
.source "LockscreenStatisticsPreference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextReportTime(Landroid/content/Context;J)J
    .locals 1

    const-string p0, "LockscreenStatistics"

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "NEXT_REPORT_TIME"

    .line 43
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextReportTimeWeekly(Landroid/content/Context;J)J
    .locals 1

    const-string p0, "LockscreenStatistics"

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "NEXT_WEEKLY_REPORT_TIME"

    .line 71
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setNextReportTime(Landroid/content/Context;J)V
    .locals 1

    const-string p0, "LockscreenStatistics"

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 56
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "NEXT_REPORT_TIME"

    .line 57
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setNextReportTimeWeekly(Landroid/content/Context;J)V
    .locals 1

    const-string p0, "LockscreenStatistics"

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "NEXT_WEEKLY_REPORT_TIME"

    .line 84
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
