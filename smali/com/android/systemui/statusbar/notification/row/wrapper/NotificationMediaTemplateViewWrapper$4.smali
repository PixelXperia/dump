.class Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;
.super Ljava/lang/Object;
.source "NotificationMediaTemplateViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$100(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$500(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;Landroid/media/session/PlaybackState;)V

    .line 290
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 291
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1300(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$400(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$400(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    :cond_2
    :goto_0
    return-void
.end method
