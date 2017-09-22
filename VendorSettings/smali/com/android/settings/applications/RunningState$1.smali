.class Lcom/android/settings/applications/RunningState$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic OG:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->OG:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I
    .locals 8

    .prologue
    const/16 v7, 0x190

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 157
    iget v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v4, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-eq v2, v4, :cond_3

    .line 158
    iget v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$1;->OG:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->Nj:I

    if-ne v2, v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    iget v2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$1;->OG:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->Nj:I

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 160
    :cond_2
    iget v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v3, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 162
    :cond_3
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v4, p2, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-ne v2, v4, :cond_5

    .line 163
    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-ne v1, v2, :cond_4

    move v0, v3

    .line 164
    goto :goto_0

    .line 166
    :cond_4
    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 168
    :cond_5
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 172
    :cond_6
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 174
    iget-object v2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 176
    iget v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v2, v7, :cond_7

    move v2, v1

    .line 178
    :goto_1
    iget v4, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v4, v7, :cond_8

    move v4, v1

    .line 181
    :goto_2
    if-eq v2, v4, :cond_a

    .line 182
    if-eqz v2, :cond_9

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_7
    move v2, v3

    .line 176
    goto :goto_1

    :cond_8
    move v4, v3

    .line 178
    goto :goto_2

    :cond_9
    move v1, v0

    .line 182
    goto :goto_3

    .line 184
    :cond_a
    iget v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    move v2, v1

    .line 186
    :goto_4
    iget v4, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_c

    move v4, v1

    .line 189
    :goto_5
    if-eq v2, v4, :cond_d

    .line 190
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_b
    move v2, v3

    .line 184
    goto :goto_4

    :cond_c
    move v4, v3

    .line 186
    goto :goto_5

    .line 193
    :cond_d
    iget v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v4, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq v2, v4, :cond_e

    .line 194
    iget v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v3, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 196
    :cond_e
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-ne v2, v4, :cond_f

    move v0, v3

    .line 197
    goto/16 :goto_0

    .line 199
    :cond_f
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    .line 200
    :cond_10
    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 149
    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$1;->a(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I

    move-result v0

    return v0
.end method
