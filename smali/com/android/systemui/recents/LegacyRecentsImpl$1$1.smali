.class Lcom/android/systemui/recents/LegacyRecentsImpl$1$1;
.super Ljava/lang/Object;
.source "LegacyRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/LegacyRecentsImpl$1;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/LegacyRecentsImpl$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/LegacyRecentsImpl$1;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$1$1;->this$1:Lcom/android/systemui/recents/LegacyRecentsImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$1$1;->this$1:Lcom/android/systemui/recents/LegacyRecentsImpl$1;

    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$1;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {p0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$200(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    return-void
.end method
