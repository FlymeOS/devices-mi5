.class Lcom/android/settings/dndmode/p;
.super Ljava/lang/Object;
.source "LabelPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aaI:Lcom/android/settings/dndmode/LabelPreference;

.field final synthetic aaJ:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/LabelPreference;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/dndmode/p;->aaI:Lcom/android/settings/dndmode/LabelPreference;

    iput-object p2, p0, Lcom/android/settings/dndmode/p;->aaJ:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/dndmode/p;->aaJ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 76
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    iget-object v1, p0, Lcom/android/settings/dndmode/p;->aaJ:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/dndmode/p;->aaJ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method
