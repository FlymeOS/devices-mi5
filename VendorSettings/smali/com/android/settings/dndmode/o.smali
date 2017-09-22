.class Lcom/android/vendorsettings/dndmode/o;
.super Ljava/lang/Object;
.source "LabelPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aaH:Landroid/widget/LinearLayout;

.field final synthetic aaI:Lcom/android/vendorsettings/dndmode/LabelPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/dndmode/LabelPreference;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/vendorsettings/dndmode/o;->aaI:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iput-object p2, p0, Lcom/android/vendorsettings/dndmode/o;->aaH:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/o;->aaH:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 60
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/o;->aaH:Landroid/widget/LinearLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 62
    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/o;->aaH:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method
