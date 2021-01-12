.class public Lcom/sonymobile/settings/NonDisableableAppSetup;
.super Landroid/content/BroadcastReceiver;
.source "NonDisableableAppSetup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p0, 0x0

    const/4 p2, 0x1

    .line 29
    invoke-static {p1, p0, p2}, Lcom/android/settings/Utils;->setNonDisableablePackagesEnabledSetting(Landroid/content/Context;II)V

    return-void
.end method
