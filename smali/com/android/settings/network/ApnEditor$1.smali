.class Lcom/android/settings/network/ApnEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnEditor;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$1;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor$1;->this$0:Lcom/android/settings/network/ApnEditor;

    const-string p2, "connectivity"

    .line 221
    invoke-static {p1, p2}, Lcom/android/settings/network/ApnEditor;->access$000(Lcom/android/settings/network/ApnEditor;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/settings/network/ApnEditor$1;->this$0:Lcom/android/settings/network/ApnEditor;

    .line 222
    invoke-static {p2}, Lcom/android/settings/network/ApnEditor;->access$100(Lcom/android/settings/network/ApnEditor;)Landroid/content/ContentResolver;

    move-result-object p2

    .line 220
    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->isTethered(Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor$1;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->access$200(Lcom/android/settings/network/ApnEditor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor$1;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->access$300(Lcom/android/settings/network/ApnEditor;)V

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/ApnEditor$1;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method
