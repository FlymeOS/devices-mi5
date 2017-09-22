.class Lcom/android/settings/gG;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# instance fields
.field final synthetic xZ:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 213
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->i(Lcom/android/settings/RadioInfo;)V

    goto :goto_0

    .line 217
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;)V

    goto :goto_0

    .line 221
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->j(Lcom/android/settings/RadioInfo;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->k(Lcom/android/settings/RadioInfo;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->l(Lcom/android/settings/RadioInfo;)V

    goto :goto_0

    .line 227
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 228
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 229
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v5

    .line 230
    iget-object v1, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->m(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->m(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->n(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->n(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->m(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 241
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 242
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->o(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/settings/gG;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 248
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 249
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->p(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 256
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 257
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 258
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->q(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "refresh error"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->q(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 264
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->r(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 266
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->q(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "update error"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 271
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 272
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 273
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->s(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "update error"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 275
    :cond_5
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 276
    iget-object v1, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asdiv EVENT_QUERY_ASDIV_STATUS_DONE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 277
    aget-byte v1, v0, v5

    if-nez v1, :cond_6

    .line 278
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->s(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 279
    :cond_6
    aget-byte v0, v0, v5

    if-ne v0, v4, :cond_7

    .line 280
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->s(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "cross"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/android/settings/gG;->xZ:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->s(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "unkown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
    .end sparse-switch
.end method
