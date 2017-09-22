.class Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;
.super Ljava/lang/Object;
.source "ResolverSettings.java"


# instance fields
.field public MR:Landroid/view/View;

.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;->text:Landroid/widget/TextView;

    .line 217
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 218
    const v0, 0x7f13027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;->MR:Landroid/view/View;

    .line 219
    return-void
.end method
