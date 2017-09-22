.class Lcom/android/settings/W;
.super Ljava/lang/Object;
.source "BandMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic ck:Lcom/android/settings/BandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/BandMode;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/W;->ck:Lcom/android/settings/BandMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/W;->ck:Lcom/android/settings/BandMode;

    invoke-virtual {v0}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/W;->ck:Lcom/android/settings/BandMode;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Y;

    invoke-static {v1, v0}, Lcom/android/settings/BandMode;->a(Lcom/android/settings/BandMode;Lcom/android/settings/Y;)Lcom/android/settings/Y;

    .line 92
    iget-object v0, p0, Lcom/android/settings/W;->ck:Lcom/android/settings/BandMode;

    invoke-static {v0}, Lcom/android/settings/BandMode;->a(Lcom/android/settings/BandMode;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/W;->ck:Lcom/android/settings/BandMode;

    invoke-static {v1}, Lcom/android/settings/BandMode;->c(Lcom/android/settings/BandMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/W;->ck:Lcom/android/settings/BandMode;

    invoke-static {v2}, Lcom/android/settings/BandMode;->b(Lcom/android/settings/BandMode;)Lcom/android/settings/Y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/Y;->W()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 95
    return-void
.end method
