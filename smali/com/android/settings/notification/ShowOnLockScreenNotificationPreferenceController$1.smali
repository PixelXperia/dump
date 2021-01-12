.class Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController$1;
.super Ljava/lang/Object;
.source "ShowOnLockScreenNotificationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->initKeepLockscreenNotifications(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 201
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 202
    iget-object p0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->access$000(Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "somc.lockscreen.keep_notifications"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
