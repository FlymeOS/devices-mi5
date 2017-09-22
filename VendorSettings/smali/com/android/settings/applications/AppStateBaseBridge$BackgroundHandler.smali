.class Lcom/android/vendorsettings/applications/AppStateBaseBridge$BackgroundHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# instance fields
.field final synthetic Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/applications/AppStateBaseBridge;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/vendorsettings/applications/AppStateBaseBridge$BackgroundHandler;->Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateBaseBridge$BackgroundHandler;->Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->jM()V

    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateBaseBridge$BackgroundHandler;->Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->Gv:Lcom/android/vendorsettings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/vendorsettings/applications/AppStateBaseBridge$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateBaseBridge$BackgroundHandler;->Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->Gs:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->zo()Ljava/util/ArrayList;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 142
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 143
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    .line 144
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/a/o;

    .line 145
    iget-object v6, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v5, :cond_0

    iget-object v6, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    iget-object v6, p0, Lcom/android/vendorsettings/applications/AppStateBaseBridge$BackgroundHandler;->Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    invoke-virtual {v6, v1, v0, v5}, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->a(Lcom/android/b/a/o;Ljava/lang/String;I)V

    .line 143
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStateBaseBridge$BackgroundHandler;->Gw:Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->Gv:Lcom/android/vendorsettings/applications/AppStateBaseBridge$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/vendorsettings/applications/AppStateBaseBridge$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
