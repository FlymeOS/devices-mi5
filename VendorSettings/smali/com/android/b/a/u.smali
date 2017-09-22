.class Lcom/android/b/a/u;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# instance fields
.field final synthetic aIR:Lcom/android/b/a/a;


# direct methods
.method constructor <init>(Lcom/android/b/a/a;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 754
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    invoke-virtual {v0}, Lcom/android/b/a/a;->zl()V

    .line 755
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 757
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/b/a/w;

    .line 758
    iget-object v1, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, v0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    iget-object v0, v0, Lcom/android/b/a/w;->aJc:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/android/b/a/s;->c(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 763
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-object v0, v0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    invoke-interface {v0}, Lcom/android/b/a/s;->jz()V

    .line 763
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 768
    :goto_2
    :pswitch_2
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-object v0, v0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    invoke-interface {v0}, Lcom/android/b/a/s;->jA()V

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 773
    :goto_3
    :pswitch_3
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-object v2, v0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/android/b/a/s;->al(Ljava/lang/String;)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 779
    :goto_4
    :pswitch_4
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-object v0, v0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    invoke-interface {v0}, Lcom/android/b/a/s;->jB()V

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_5
    move v2, v1

    .line 784
    :goto_5
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-object v3, v0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_6
    invoke-interface {v3, v0}, Lcom/android/b/a/s;->aj(Z)V

    .line 784
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_1
    move v0, v1

    .line 785
    goto :goto_6

    .line 790
    :goto_7
    :pswitch_6
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-object v0, v0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    invoke-interface {v0}, Lcom/android/b/a/s;->jC()V

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 795
    :goto_8
    :pswitch_7
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/b/a/u;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    iget-object v0, v0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    invoke-interface {v0}, Lcom/android/b/a/s;->jD()V

    .line 795
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
