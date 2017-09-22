.class Lcom/android/vendorsettings/wifi/aX;
.super Ljava/lang/Object;
.source "WpsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aEY:Lcom/android/vendorsettings/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/aX;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aX;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->a(Lcom/android/vendorsettings/wifi/WpsFragment;)V

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aX;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->b(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 171
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aX;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->b(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aX;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->c(Lcom/android/vendorsettings/wifi/WpsFragment;)V

    .line 173
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aX;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->d(Lcom/android/vendorsettings/wifi/WpsFragment;)V

    .line 174
    return-void
.end method
