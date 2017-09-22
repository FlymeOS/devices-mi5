.class Lcom/android/settings/bM;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iA:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

.field final synthetic iw:Landroid/widget/NumberPicker;

.field final synthetic ix:Lcom/android/settings/d/f;

.field final synthetic iy:Landroid/net/NetworkTemplate;

.field final synthetic iz:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/d/f;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/settings/bM;->iA:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/bM;->iw:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/bM;->ix:Lcom/android/settings/d/f;

    iput-object p4, p0, Lcom/android/settings/bM;->iy:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings/bM;->iz:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/settings/bM;->iw:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2134
    iget-object v0, p0, Lcom/android/settings/bM;->iw:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 2135
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2136
    iget-object v2, p0, Lcom/android/settings/bM;->ix:Lcom/android/settings/d/f;

    iget-object v3, p0, Lcom/android/settings/bM;->iy:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/d/f;->a(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 2137
    iget-object v0, p0, Lcom/android/settings/bM;->iz:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2138
    return-void
.end method
