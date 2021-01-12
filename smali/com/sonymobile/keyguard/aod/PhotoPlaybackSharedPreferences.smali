.class public Lcom/sonymobile/keyguard/aod/PhotoPlaybackSharedPreferences;
.super Ljava/lang/Object;
.source "PhotoPlaybackSharedPreferences.java"


# direct methods
.method public static getPhotoplaybackSharedPrefAlbumShown(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "PhotoPlaybackSharedPref"

    .line 101
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "ALBUM_SHOWN"

    .line 103
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getPhotoplaybackSharedPrefIntroShown(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "PhotoPlaybackSharedPref"

    .line 73
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "INTRO_SHOWN"

    .line 75
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getPhotoplaybackSharedPrefOobeShown(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "PhotoPlaybackSharedPref"

    .line 46
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "OOBE_SHOWN"

    .line 48
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setPhotoplaybackSharedPrefAlbumShown(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PhotoPlaybackSharedPref"

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ALBUM_SHOWN"

    const/4 v1, 0x1

    .line 88
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPhotoplaybackSharedPrefIntroShown(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PhotoPlaybackSharedPref"

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "INTRO_SHOWN"

    const/4 v1, 0x1

    .line 61
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPhotoplaybackSharedPrefOobeShown(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PhotoPlaybackSharedPref"

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "OOBE_SHOWN"

    const/4 v1, 0x1

    .line 34
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
