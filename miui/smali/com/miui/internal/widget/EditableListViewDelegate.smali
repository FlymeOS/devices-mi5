.class public Lcom/miui/internal/widget/EditableListViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/EditableListViewDelegate$a;,
        Lcom/miui/internal/widget/EditableListViewDelegate$b;,
        Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    }
.end annotation


# static fields
.field private static final tb:I = 0x7fffffff

.field private static final tc:Lmiui/reflect/Method;

.field private static final td:Lmiui/reflect/Method;

.field private static final te:Lmiui/reflect/Method;

.field private static final tf:Lmiui/reflect/Method;

.field private static final tg:Lmiui/reflect/Method;

.field private static final th:Lmiui/reflect/Method;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private ti:Landroid/widget/AbsListView;

.field private tj:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field private tk:Lcom/miui/internal/widget/EditableListViewDelegate$a;

.field private tl:Lcom/miui/internal/widget/EditableListViewDelegate$b;

.field private tm:Z

.field private tn:Z

.field private to:I

.field private tp:I

.field private tq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private tr:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

.field private ts:Landroid/widget/AbsListView$RecyclerListener;

.field private tt:Lmiui/widget/EditableListView$ItemCheckFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setAdapter"

    const-string v2, "(Landroid/widget/ListAdapter;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tc:Lmiui/reflect/Method;

    .line 43
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "clearChoices"

    const-string v2, "()V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->td:Lmiui/reflect/Method;

    .line 44
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setItemChecked"

    const-string v2, "(IZ)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->te:Lmiui/reflect/Method;

    .line 45
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "isItemChecked"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tf:Lmiui/reflect/Method;

    .line 46
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "getCheckedItemPositions"

    const-string v2, "()Landroid/util/SparseBooleanArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tg:Lmiui/reflect/Method;

    .line 48
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setMultiChoiceModeListener"

    const-string v2, "(Landroid/widget/AbsListView$MultiChoiceModeListener;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->th:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tq:Ljava/util/List;

    .line 71
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tr:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    .line 82
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$2;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ts:Landroid/widget/AbsListView$RecyclerListener;

    .line 525
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->f(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tp:I

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->bu()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private bt()V
    .locals 8

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 314
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 315
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 316
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 317
    add-int v4, v1, v0

    .line 318
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tr:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-interface {v5, v3, v4, v6, v7}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method private bu()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tq:Ljava/util/List;

    .line 382
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 383
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 384
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->f(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v3

    .line 385
    if-eqz v3, :cond_0

    .line 386
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    return-object v2
.end method

.method static synthetic c(Lcom/miui/internal/widget/EditableListViewDelegate;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tp:I

    return v0
.end method

.method static synthetic c(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    return v0
.end method

.method static synthetic d(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tr:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    return-object v0
.end method

.method private f(Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 368
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 369
    if-nez v0, :cond_0

    .line 370
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 371
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 376
    :cond_0
    return-object v0
.end method

.method static synthetic f(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tm:Z

    return v0
.end method

.method static synthetic g(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tn:Z

    return v0
.end method

.method private getCheckableItemCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tt:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tt:Lmiui/widget/EditableListView$ItemCheckFilter;

    invoke-interface {v0}, Lmiui/widget/EditableListView$ItemCheckFilter;->getCheckableItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isItemCheckable(I)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tt:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tt:Lmiui/widget/EditableListView$ItemCheckFilter;

    invoke-interface {v0, p1}, Lmiui/widget/EditableListView$ItemCheckFilter;->isItemCheckable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearChoices()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->td:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 183
    iput v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    .line 185
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tr:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 186
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->bt()V

    .line 187
    iput v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    .line 188
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tk:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tk:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate$a;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 4

    .prologue
    .line 244
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tg:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public initialize(Landroid/widget/AbsListView;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/AbsListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "absListView is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    .line 118
    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    .line 119
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 120
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ts:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 121
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    iput-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tn:Z

    .line 123
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 125
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->tc:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v1, 0x0

    check-cast v1, Landroid/widget/ListAdapter;

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    :cond_1
    return-void
.end method

.method public isAllItemsChecked()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInActionMode()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 212
    :goto_0
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->tf:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public isItemIdChecked(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 223
    .line 224
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-wide v4, v2, v1

    .line 225
    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 226
    const/4 v0, 0x1

    .line 231
    :cond_0
    return v0

    .line 224
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 277
    if-nez p1, :cond_1

    .line 278
    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tk:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    .line 279
    sget-object v1, Lcom/miui/internal/widget/EditableListViewDelegate;->tc:Lmiui/reflect/Method;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListAdapter;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$a;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tk:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    .line 282
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tc:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tk:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAllItemsChecked(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tm:Z

    .line 161
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    move v0, v1

    .line 162
    :goto_0
    if-ge v0, v2, :cond_1

    .line 163
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemChecked(IZ)V

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    .line 168
    iput-boolean v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tm:Z

    .line 170
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tr:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 171
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->bt()V

    .line 173
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tl:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tl:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$b;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 176
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 167
    goto :goto_1
.end method

.method public setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tt:Lmiui/widget/EditableListView$ItemCheckFilter;

    .line 266
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 200
    :goto_0
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->te:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 201
    return-void

    :cond_0
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 6

    .prologue
    .line 295
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tl:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$b;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tl:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tl:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$b;->a(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 300
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->th:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tl:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public setUpdateListener(Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;)V
    .locals 0

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tr:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    .line 141
    :cond_0
    return-void
.end method

.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    if-eqz p1, :cond_0

    .line 350
    iget v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->to:I

    .line 351
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 352
    if-nez v4, :cond_1

    .line 353
    sget v1, Lmiui/R$string;->select_item:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v0, p1

    .line 359
    check-cast v0, Lmiui/view/EditActionMode;

    const v5, 0x102001a

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lmiui/R$string;->deselect_all:I

    :goto_1
    invoke-interface {v0, v5, v1}, Lmiui/view/EditActionMode;->setButton(II)V

    .line 363
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    if-eqz v4, :cond_3

    move v0, v2

    :goto_2
    invoke-interface {v1, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 365
    :cond_0
    return-void

    .line 355
    :cond_1
    sget v1, Lmiui/R$plurals;->items_selected:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 356
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :cond_2
    sget v1, Lmiui/R$string;->select_all:I

    goto :goto_1

    :cond_3
    move v0, v3

    .line 363
    goto :goto_2
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tg:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tj:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ti:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 334
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->f(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 338
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method
