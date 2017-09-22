.class public abstract Lcom/miui/internal/variable/Android_View_View_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_View_class$1;,
        Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;,
        Lcom/miui/internal/variable/Android_View_View_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/view/View;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field private static kc:Landroid/util/SparseIntArray;

.field private static kd:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private static ke:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kd:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->ke:Ljava/util/WeakHashMap;

    .line 29
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x101009c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x101009e

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x101009f

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a0

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a1

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a2

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a3

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a4

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a5

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a6

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a7

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10100a9

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    const v1, 0x10102fe

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_first_h:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_middle_h:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_last_h:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_single_h:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_first_v:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_middle_v:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_last_v:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_single_v:I

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method private static a([I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 119
    .line 120
    if-eqz p0, :cond_0

    .line 121
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, p0, v1

    .line 122
    invoke-static {v2}, Lcom/miui/internal/variable/Android_View_View_class;->h(I)I

    move-result v2

    or-int/2addr v2, v0

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 125
    :cond_0
    return v0
.end method

.method private static h(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    .line 103
    if-eqz p0, :cond_1

    .line 104
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "State attribute cannot exceed 32!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const/4 v0, 0x1

    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int/2addr v0, v1

    .line 110
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kc:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    :cond_1
    return v0
.end method


# virtual methods
.method public abstract createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
.end method

.method protected getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->ke:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    .line 70
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;-><init>()V

    .line 72
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->ke:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    return-object v0
.end method

.method public getHorizontalState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iget v0, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    return v0
.end method

.method public getVerticalState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iget v0, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    return v0
.end method

.method public hasInitViewSequenceStates(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return v0
.end method

.method protected onCreateDrawableState(Landroid/view/View;[II)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v3

    .line 131
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v4

    .line 133
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 134
    invoke-static {p2}, Lcom/miui/internal/variable/Android_View_View_class;->a([I)I

    move-result v0

    invoke-static {v3}, Lcom/miui/internal/variable/Android_View_View_class;->h(I)I

    move-result v2

    or-int/2addr v0, v2

    invoke-static {v4}, Lcom/miui/internal/variable/Android_View_View_class;->h(I)I

    move-result v2

    or-int v5, v0, v2

    .line 135
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kd:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 136
    if-nez v0, :cond_4

    .line 137
    if-eqz p2, :cond_1

    array-length v0, p2

    .line 139
    :goto_0
    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :cond_0
    aput v3, v2, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    aput v4, v2, v0

    .line 145
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kd:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    :goto_1
    if-eqz p3, :cond_3

    .line 150
    if-nez v2, :cond_2

    .line 151
    new-array v0, p3, [I

    .line 159
    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    .line 137
    goto :goto_0

    .line 153
    :cond_2
    array-length v0, v2

    add-int/2addr v0, p3

    new-array v0, v0, [I

    .line 154
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    move-object v2, p2

    goto :goto_1
.end method

.method public abstract relayout(Landroid/view/View;)V
.end method

.method public setHasInitViewSequenceStates(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iput-boolean p2, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    .line 99
    return-void
.end method

.method public setHorizontalState(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iput p2, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    .line 83
    return-void
.end method

.method public abstract setLeftDirectly(Landroid/view/View;I)V
.end method

.method public abstract setRightDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollXDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollYDirectly(Landroid/view/View;I)V
.end method

.method public setVerticalState(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iput p2, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    .line 91
    return-void
.end method
