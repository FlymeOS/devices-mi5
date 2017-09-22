.class Lcom/android/settings/dashboard/g;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic UZ:Lcom/android/settings/dashboard/e;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/e;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/dashboard/g;->UZ:Lcom/android/settings/dashboard/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    add-int/lit8 v0, p3, -0x1

    .line 231
    if-gez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/g;->UZ:Lcom/android/settings/dashboard/e;

    invoke-static {v1}, Lcom/android/settings/dashboard/e;->c(Lcom/android/settings/dashboard/e;)Lcom/android/settings/dashboard/k;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dashboard/k;->a(Lcom/android/settings/dashboard/k;)Landroid/database/Cursor;

    move-result-object v1

    .line 235
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 237
    iget-object v0, p0, Lcom/android/settings/dashboard/g;->UZ:Lcom/android/settings/dashboard/e;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settings/dashboard/e;->c(Lcom/android/settings/dashboard/e;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/settings/dashboard/g;->UZ:Lcom/android/settings/dashboard/e;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/e;->a(Lcom/android/settings/dashboard/e;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/settings/dashboard/g;->UZ:Lcom/android/settings/dashboard/e;

    invoke-static {v0}, Lcom/android/settings/dashboard/e;->e(Lcom/android/settings/dashboard/e;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/g;->UZ:Lcom/android/settings/dashboard/e;

    invoke-static {v1}, Lcom/android/settings/dashboard/e;->d(Lcom/android/settings/dashboard/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
