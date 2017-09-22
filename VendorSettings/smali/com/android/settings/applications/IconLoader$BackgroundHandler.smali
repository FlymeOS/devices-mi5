.class Lcom/android/settings/applications/IconLoader$BackgroundHandler;
.super Landroid/os/Handler;
.source "IconLoader.java"


# instance fields
.field final synthetic Is:Lcom/android/settings/applications/IconLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/IconLoader;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->Is:Lcom/android/settings/applications/IconLoader;

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    return-void
.end method


# virtual methods
.method public aJ(I)I
    .locals 2

    .prologue
    .line 69
    rem-int/lit8 v0, p1, 0xf

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->removeMessages(I)V

    .line 73
    :cond_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/IconLoader$IconItem;

    .line 56
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, v0, Lcom/android/settings/applications/IconLoader$IconItem;->Iu:Lcom/android/b/a/o;

    .line 60
    iget-object v2, v0, Lcom/android/settings/applications/IconLoader$IconItem;->It:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/b/a/o;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/b/a/o;->icon:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v1, p0, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->Is:Lcom/android/settings/applications/IconLoader;

    iget-object v1, v1, Lcom/android/settings/applications/IconLoader;->Io:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 63
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 64
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/IconLoader$BackgroundHandler;->Is:Lcom/android/settings/applications/IconLoader;

    iget-object v0, v0, Lcom/android/settings/applications/IconLoader;->Io:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
