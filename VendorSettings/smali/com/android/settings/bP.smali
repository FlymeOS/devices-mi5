.class Lcom/android/vendorsettings/bP;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iD:Landroid/widget/NumberPicker;

.field final synthetic iE:Lcom/android/vendorsettings/DataUsageSummary$LimitEditorFragment;

.field final synthetic ix:Lcom/android/vendorsettings/d/f;

.field final synthetic iy:Landroid/net/NetworkTemplate;

.field final synthetic iz:Lcom/android/vendorsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/vendorsettings/d/f;Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/android/vendorsettings/bP;->iE:Lcom/android/vendorsettings/DataUsageSummary$LimitEditorFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/bP;->iD:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/vendorsettings/bP;->ix:Lcom/android/vendorsettings/d/f;

    iput-object p4, p0, Lcom/android/vendorsettings/bP;->iy:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/vendorsettings/bP;->iz:Lcom/android/vendorsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/vendorsettings/bP;->iD:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2261
    iget-object v0, p0, Lcom/android/vendorsettings/bP;->iD:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    .line 2262
    iget-object v2, p0, Lcom/android/vendorsettings/bP;->ix:Lcom/android/vendorsettings/d/f;

    iget-object v3, p0, Lcom/android/vendorsettings/bP;->iy:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/vendorsettings/d/f;->b(Landroid/net/NetworkTemplate;J)V

    .line 2263
    iget-object v0, p0, Lcom/android/vendorsettings/bP;->iz:Lcom/android/vendorsettings/DataUsageSummary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/DataUsageSummary;->a(Lcom/android/vendorsettings/DataUsageSummary;Z)V

    .line 2264
    return-void
.end method
