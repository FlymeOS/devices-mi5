.class Lcom/android/vendorsettings/gp;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic wq:Lcom/android/vendorsettings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ProxySelector;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/vendorsettings/gp;->wq:Lcom/android/vendorsettings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/vendorsettings/gp;->wq:Lcom/android/vendorsettings/ProxySelector;

    iget-object v0, v0, Lcom/android/vendorsettings/ProxySelector;->wg:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/vendorsettings/gp;->wq:Lcom/android/vendorsettings/ProxySelector;

    iget-object v0, v0, Lcom/android/vendorsettings/ProxySelector;->wh:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/android/vendorsettings/gp;->wq:Lcom/android/vendorsettings/ProxySelector;

    iget-object v0, v0, Lcom/android/vendorsettings/ProxySelector;->wi:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method