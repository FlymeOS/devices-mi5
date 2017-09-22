.class Lcom/android/settings/applications/IconLoader$1;
.super Landroid/os/Handler;
.source "IconLoader.java"


# instance fields
.field final synthetic Is:Lcom/android/settings/applications/IconLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/IconLoader;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/applications/IconLoader$1;->Is:Lcom/android/settings/applications/IconLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/IconLoader$IconItem;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/android/settings/applications/IconLoader$IconItem;->kw()V

    .line 41
    :cond_0
    return-void
.end method
