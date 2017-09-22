.class Lcom/android/vendorsettings/wifi/an;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aDu:Z

.field final synthetic aDv:Z

.field final synthetic aDw:Lcom/android/vendorsettings/wifi/am;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/am;Z)V
    .locals 1

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/an;->aDw:Lcom/android/vendorsettings/wifi/am;

    iput-boolean p2, p0, Lcom/android/vendorsettings/wifi/an;->aDv:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iget-boolean v0, p0, Lcom/android/vendorsettings/wifi/an;->aDv:Z

    iput-boolean v0, p0, Lcom/android/vendorsettings/wifi/an;->aDu:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/vendorsettings/wifi/an;->aDu:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/wifi/an;->aDu:Z

    .line 153
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/an;->aDw:Lcom/android/vendorsettings/wifi/am;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/am;->a(Lcom/android/vendorsettings/wifi/am;)Lcom/android/b/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/an;->aDw:Lcom/android/vendorsettings/wifi/am;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/am;->a(Lcom/android/vendorsettings/wifi/am;)Lcom/android/b/e/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vendorsettings/wifi/an;->aDu:Z

    iput-boolean v1, v0, Lcom/android/b/e/a;->aKN:Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/an;->aDw:Lcom/android/vendorsettings/wifi/am;

    iget-boolean v1, p0, Lcom/android/vendorsettings/wifi/an;->aDu:Z

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wifi/am;->a(Lcom/android/vendorsettings/wifi/am;Z)V

    .line 157
    check-cast p1, Landroid/widget/ImageView;

    .line 158
    iget-boolean v0, p0, Lcom/android/vendorsettings/wifi/an;->aDu:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0202fd

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_2
    const v0, 0x7f0202fa

    goto :goto_1
.end method
