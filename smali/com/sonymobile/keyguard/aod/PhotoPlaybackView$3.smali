.class Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;
.super Landroid/os/AsyncTask;
.source "PhotoPlaybackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->setDozing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 254
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 257
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$900(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$602(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Z)Z

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 254
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 266
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    invoke-static {p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$1000(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;)V

    .line 270
    iget-object p0, p0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView$3;->this$0:Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;->access$1102(Lcom/sonymobile/keyguard/aod/PhotoPlaybackView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method
