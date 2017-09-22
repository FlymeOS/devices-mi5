.class Lcom/android/vendorsettings/dashboard/f;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic UZ:Lcom/android/vendorsettings/dashboard/e;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/dashboard/e;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/vendorsettings/dashboard/f;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .prologue
    .line 173
    add-int/lit8 v0, p3, -0x1

    .line 177
    if-gez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/dashboard/f;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-static {v1}, Lcom/android/vendorsettings/dashboard/e;->a(Lcom/android/vendorsettings/dashboard/e;)Lcom/android/vendorsettings/dashboard/i;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/dashboard/i;->a(Lcom/android/vendorsettings/dashboard/i;)Landroid/database/Cursor;

    move-result-object v2

    .line 182
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 184
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    const/16 v0, 0xd

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/f;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 190
    invoke-virtual {v0}, Lcom/android/vendorsettings/hn;->hJ()V

    .line 192
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static/range {v0 .. v6}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/f;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-static {v0}, Lcom/android/vendorsettings/dashboard/e;->b(Lcom/android/vendorsettings/dashboard/e;)V

    goto :goto_0

    .line 198
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    const/16 v5, 0xb

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 205
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 209
    :cond_2
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/hn;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
