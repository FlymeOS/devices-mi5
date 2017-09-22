.class Lcom/android/vendorsettings/search/c;
.super Landroid/os/Handler;
.source "DynamicIndexableContentMonitor.java"


# instance fields
.field final synthetic aoZ:Lcom/android/vendorsettings/search/b;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/search/b;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/vendorsettings/search/c;->aoZ:Lcom/android/vendorsettings/search/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/android/vendorsettings/search/c;->aoZ:Lcom/android/vendorsettings/search/b;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/search/b;->a(Lcom/android/vendorsettings/search/b;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/android/vendorsettings/search/c;->aoZ:Lcom/android/vendorsettings/search/b;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/search/b;->b(Lcom/android/vendorsettings/search/b;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
