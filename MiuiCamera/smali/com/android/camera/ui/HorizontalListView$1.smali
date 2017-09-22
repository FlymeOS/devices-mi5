.class Lcom/android/camera/ui/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView$1;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView$1;->this$0:Lcom/android/camera/ui/HorizontalListView;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$1;->this$0:Lcom/android/camera/ui/HorizontalListView;

    const/4 v2, 0x1

    # setter for: Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v2}, Lcom/android/camera/ui/HorizontalListView;->access$002(Lcom/android/camera/ui/HorizontalListView;Z)Z

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$1;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalListView;->invalidate()V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$1;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V

    .line 123
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$1;->this$0:Lcom/android/camera/ui/HorizontalListView;

    # invokes: Lcom/android/camera/ui/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/android/camera/ui/HorizontalListView;->access$100(Lcom/android/camera/ui/HorizontalListView;)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$1;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalListView;->invalidate()V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$1;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V

    .line 130
    return-void
.end method
