.class public Lcom/android/settings/applications/IconLoader;
.super Ljava/lang/Object;
.source "IconLoader.java"


# instance fields
.field Io:Landroid/os/Handler;

.field private Ip:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

.field private Iq:Ljava/lang/String;

.field private Ir:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/settings/applications/IconLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/IconLoader$1;-><init>(Lcom/android/settings/applications/IconLoader;)V

    iput-object v0, p0, Lcom/android/settings/applications/IconLoader;->Io:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/android/settings/applications/IconLoader;->Iq:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Lcom/android/b/a/o;I)V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/android/settings/applications/IconLoader$IconItem;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/applications/IconLoader$IconItem;-><init>(Landroid/widget/ImageView;Lcom/android/b/a/o;)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/applications/IconLoader;->Ip:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->aJ(I)I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/android/settings/applications/IconLoader;->Ip:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    invoke-virtual {v2}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 104
    iput v1, v2, Landroid/os/Message;->what:I

    .line 105
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader;->Ip:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/settings/applications/IconLoader;->Iq:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/IconLoader;->Ir:Landroid/os/HandlerThread;

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader;->Ir:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/IconLoader;->Ir:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;-><init>(Lcom/android/settings/applications/IconLoader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/IconLoader;->Ip:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    .line 90
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader;->Io:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/applications/IconLoader;->Ip:Lcom/android/settings/applications/IconLoader$BackgroundHandler;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->removeMessages(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader;->Ir:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 98
    return-void
.end method
