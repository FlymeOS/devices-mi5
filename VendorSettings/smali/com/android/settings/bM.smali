.class Lcom/android/vendorsettings/bM;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iA:Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;

.field final synthetic iw:Landroid/widget/NumberPicker;

.field final synthetic ix:Lcom/android/vendorsettings/d/f;

.field final synthetic iy:Landroid/net/NetworkTemplate;

.field final synthetic iz:Lcom/android/vendorsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/vendorsettings/d/f;Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/vendorsettings/bM;->iA:Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/bM;->iw:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/vendorsettings/bM;->ix:Lcom/android/vendorsettings/d/f;

    iput-object p4, p0, Lcom/android/vendorsettings/bM;->iy:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/vendorsettings/bM;->iz:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/vendorsettings/bM;->iw:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2134
    iget-object v0, p0, Lcom/android/vendorsettings/bM;->iw:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 2135
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2136
    iget-object v2, p0, Lcom/android/vendorsettings/bM;->ix:Lcom/android/vendorsettings/d/f;

    iget-object v3, p0, Lcom/android/vendorsettings/bM;->iy:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/vendorsettings/d/f;->a(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 2137
    iget-object v0, p0, Lcom/android/vendorsettings/bM;->iz:Lcom/android/vendorsettings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Lcom/android/vendorsettings/DataUsageSummary;Z)V

    .line 2138
    return-void
.end method
