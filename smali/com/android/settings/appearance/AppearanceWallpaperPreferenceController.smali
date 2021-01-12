.class public Lcom/android/settings/appearance/AppearanceWallpaperPreferenceController;
.super Lcom/android/settings/display/WallpaperPreferenceController;
.source "AppearanceWallpaperPreferenceController.java"


# static fields
.field public static final KEY_WALLPAPER:Ljava/lang/String; = "appearance_wallpaper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "appearance_wallpaper"

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/WallpaperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "appearance_wallpaper"

    return-object p0
.end method
