.class Lcom/android/settings/notification/LockScreenNotificationPreferenceController$1;
.super Ljava/lang/Object;
.source "LockScreenNotificationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->initKeepLockscreenNotifications(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 362
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 363
    iget-object p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->access$000(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "somc.lockscreen.keep_notifications"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
