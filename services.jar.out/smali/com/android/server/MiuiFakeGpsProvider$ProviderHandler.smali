.class final Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "MiuiFakeGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/server/MiuiFakeGpsProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p2, "x1"    # Lcom/android/server/MiuiFakeGpsProvider$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    .line 130
    .local v0, "message":I
    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/location/ProviderRequest;

    # invokes: Lcom/android/server/MiuiFakeGpsProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    invoke-static {v2, v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$200(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/internal/location/ProviderRequest;)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # invokes: Lcom/android/server/MiuiFakeGpsProvider;->cancelFakeLocationRequest()V
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$300(Lcom/android/server/MiuiFakeGpsProvider;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
