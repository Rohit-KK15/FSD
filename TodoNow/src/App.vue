<template>
  <main>
    <div class="mainHead">
      <h1>
        <a
          style="text-decoration: none"
          href="https://github.com/GPSxtreme"
          target="_blank"
          ><span class="logoTxt1">todoNow</span></a
        >
      </h1>
    </div>
    <form class="inputBox" @submit="handleTaskAdd">
      <input
        name="taskInput"
        type="text"
        placeholder="Tasks here📝...."
        autocomplete="off"
      />
      <button class="add" type="submit">+ Add</button>
    </form>
    <div class="startMsg" v-if="!taskArray[0]">
      <p>
        <a href="https://tinyurl.com/3wcyvb7x"
          ><span class="startMsgSymbol">▩</span></a
        >
        Write a task and click on the Add button to show the task
      </p>
    </div>
    <ul class="tasks">
      <li class="task_item" v-for="task in taskArray" :key="task.id">
        {{ task.text }}
        <button class="doneBtn" @click="handleTaskCompleteClick(task.id)">
          ✔
        </button>
      </li>
    </ul>
    <h2 align="center" v-if="taskCompletedArray[0]">Completed tasks</h2>
    <ul class="tasks">
      <li class="task_item" v-for="task in taskCompletedArray" :key="task.id">
        {{ task.text }}
        <div>
          <button class="moveTask" @click="moveTaskUp(task.id)">▲</button>
          <button class="deleteBtn" @click="handleTaskDeleteClick(task.id)">
            ✘
          </button>
        </div>
      </li>
    </ul>
  </main>
</template>

<script>
export default {
  name: "App",
  components: {},
  data() {
    return {
      taskArray: [],
      taskCompletedArray: [],
    };
  },
  mounted() {
    //get items from local storage
    this.taskArray =
      JSON.parse(window.localStorage.getItem("ACTIVE_LIST")) || [];
    this.taskCompletedArray = JSON.parse(
      window.localStorage.getItem("COMPLETED_LIST") || []
    );
  },
  methods: {
    addArraysToLocalStorage(activeArray = [], completedArray = []) {
      if (activeArray) {
        //store active Array in local storage
        window.localStorage.setItem("ACTIVE_LIST", JSON.stringify(activeArray));
      }
      if (completedArray) {
        //store completed array in local storage
        window.localStorage.setItem(
          "COMPLETED_LIST",
          JSON.stringify(completedArray)
        );
      }
    },
    handleTaskAdd(e) {
      e.preventDefault();

      // get task from input
      const text = e.target.elements.taskInput.value;
      if (!text) return;

      //generate a random number for id
      let randId = Math.floor(Math.random() * 9000000000) + 1000000000;

      //add the new task to taskArray with id and text from input
      this.taskArray.push({
        id: randId,
        text: text,
      });

      //make the input clear after form submit
      e.target.elements.taskInput.value = "";

      //update local storage
      this.addArraysToLocalStorage(this.taskArray);
    },
    handleTaskCompleteClick(taskId) {
      //push the task to completed array
      this.taskCompletedArray.push(
        ...this.taskArray.filter((task) => task.id == taskId)
      );

      //remove the task from taskArray
      this.taskArray = this.taskArray.filter((task) => task.id !== taskId);

      //update local storage
      this.addArraysToLocalStorage(this.taskArray, this.taskCompletedArray);
    },
    handleTaskDeleteClick(taskId) {
      //remove the task from completed array
      this.taskCompletedArray = this.taskCompletedArray.filter(
        (task) => task.id !== taskId
      );

      //update local storage
      this.addArraysToLocalStorage([], this.taskCompletedArray);
    },
    moveTaskUp(taskId) {
      //move the completed task to task array
      this.taskArray.push(
        ...this.taskCompletedArray.filter((task) => task.id == taskId)
      );
      //remove the same task from completed task array
      this.taskCompletedArray = this.taskCompletedArray.filter(
        (task) => task.id !== taskId
      );
      //again update local storage
      this.addArraysToLocalStorage(this.taskArray, this.taskCompletedArray);
    },
  },
};
</script>

<style>
.startMsgSymbol {
  display: block;
  font-size: 70px;
}
.startMsgSymbol:hover {
  cursor: pointer;
}
.startMsg {
  display: flex;
  justify-content: center;
  margin: 20px auto;
  padding: 0 20px 20px 20px;
  text-align: center;
  background-color: #4444442a;
  width: min(400px, 70%);
}
.mainHead {
  margin-top: 60px;
  align-items: center;
}
h1 {
  text-align: center;
}
.logoTxt1 {
  display: inline;
  font-family: urbanist;
  font-size: 60px;
  color: #4c1e4f;
}
.logoTxt1:hover {
  cursor: pointer;
}
.logoTxt2 {
  font-family: train one;
  font-size: 80px;
}
.logoTxt2:hover {
  cursor: pointer;
}
a {
  all: unset;
}
.inputBox {
  display: flex;
  justify-content: center;
  padding: 20px;
  gap: 5px;
}
input {
  padding: 10px;
  width: min(300px, 70%);
  border: none;
  background-color: #fee1c7;
  box-shadow: 2.8px 2.8px 2.2px rgba(0, 0, 0, 0.014),
    6.7px 6.7px 5.3px rgba(0, 0, 0, 0.02),
    12.5px 12.5px 10px rgba(0, 0, 0, 0.025),
    22.3px 22.3px 17.9px rgba(0, 0, 0, 0.03),
    41.8px 41.8px 33.4px rgba(0, 0, 0, 0.036),
    100px 100px 80px rgba(0, 0, 0, 0.05);
}
.add {
  background-color: rgb(63, 25, 25);
  color: white;
  border: none;
  padding: 10px 30px;
}
.tasks {
  list-style: none;
  padding: 0;
}
.task_item {
  width: min(90%, 400px);
  display: flex;
  justify-content: space-between;
  margin: 10px auto;
  background-color: #2222222a;
  padding: 10px;
}
.doneBtn {
  background-color: rgb(81, 197, 81);
  color: green;
}
.deleteBtn {
  color: red;
  background-color: rgb(252, 169, 169);
}
.moveTask {
  background-color: rgb(133, 133, 250);
  color: blue;
  margin-right: 5px;
}
.MyId:hover {
  cursor: pointer;
  filter: brightness(130%);
}
</style>
