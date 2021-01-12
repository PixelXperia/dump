.class Lcom/google/android/systemui/AssistManagerGoogle$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AssistManagerGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/AssistManagerGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/AssistManagerGoogle;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/AssistManagerGoogle;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/systemui/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/AssistManagerGoogle;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/systemui/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/AssistManagerGoogle;->access$000(Lcom/google/android/systemui/AssistManagerGoogle;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/systemui/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/AssistManagerGoogle;->access$100(Lcom/google/android/systemui/AssistManagerGoogle;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/systemui/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/AssistManagerGoogle;->access$200(Lcom/google/android/systemui/AssistManagerGoogle;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/systemui/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/AssistManagerGoogle;->access$300(Lcom/google/android/systemui/AssistManagerGoogle;)V

    .line 37
    iget-object p0, p0, Lcom/google/android/systemui/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/AssistManagerGoogle;

    invoke-static {p0, p1}, Lcom/google/android/systemui/AssistManagerGoogle;->access$400(Lcom/google/android/systemui/AssistManagerGoogle;I)V

    return-void
.end method
